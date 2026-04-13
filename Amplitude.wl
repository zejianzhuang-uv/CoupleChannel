(* ::Package:: *)

LoadModelFile[f1_,f2_]:=Module[{p1=f1,p2=f2},
FAPatch[PatchModelsOnly->True,
FAModelsDirectory->FileNameJoin[{NotebookDirectory[],p1}]];
SetOptions[FourVector, FeynCalcInternal->False];
Model[p2];
];


GetContactDiagram[{i1_,i2_},{o1_,o2_},path_]:=Module[{d},
d=InsertFields[
CreateTopologies[0,2->2],
{i1,i2}->{o1,o2},
Model->FileNameJoin[{NotebookDirectory[],path}],
GenericModel->FileNameJoin[{NotebookDirectory[],path}],
InsertionLevel->{Classes}]];


GetContactAmp[{i1_,i2_},{o1_,o2_},path_]:=
Module[{d=GetContactDiagram[{i1,i2},{o1,o2},path],amp},
amp=ExpandScalarProduct[
FCFAConvert[CreateFeynAmp[d,Truncated->True],
IncomingMomenta->{k1,p1},
OutgoingMomenta->{k2,p2},
UndoChiralSplittings->True,
ChangeDimension->4,
	List->False, 
	SMP->True, 
	Contract->True]]//DiracSimplify//DiracSubstitute67//DotExpand(*//FeynAmpDenominatorExplicit*);
amp//FullSimplify];


GetContactAmpMatrix[Ch_,factor_,path_]:=
Table[GetContactAmp[Ch[[i]],Ch[[j]],path]/factor//FullSimplify,{i,Length[Ch]},{j,Length[Ch]}];

@CWE476_NULL_Pointer_Dereference__struct_45_badData = external local_unnamed_addr global ptr
@global_var_4a578 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1a141:
  %0 = load i32, ptr @CWE476_NULL_Pointer_Dereference__struct_45_badData, align 8
  call void @printIntLine(i32 %0)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1a168:
  store i64 0, ptr @CWE476_NULL_Pointer_Dereference__struct_45_badData, align 8
  call void @anon1()
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr


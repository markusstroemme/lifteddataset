@CWE476_NULL_Pointer_Dereference__int64_t_45_badData = external local_unnamed_addr global ptr
@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_df04:
  %0 = load ptr, ptr @CWE476_NULL_Pointer_Dereference__int64_t_45_badData, align 8
  %1 = ptrtoint ptr %0 to i64
  call void @printLongLongLine(i64 %1)
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_df2d:
  store i64 0, ptr @CWE476_NULL_Pointer_Dereference__int64_t_45_badData, align 8
  call void @anon1()
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr


@CWE476_NULL_Pointer_Dereference__long_68_badData = external local_unnamed_addr global ptr
@global_var_4a585 = external constant [5 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_161d2:
  store i64 0, ptr @CWE476_NULL_Pointer_Dereference__long_68_badData, align 8
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_162a0:
  %0 = load ptr, ptr @CWE476_NULL_Pointer_Dereference__long_68_badData, align 8
  %1 = ptrtoint ptr %0 to i64
  call void @printLongLine(i64 %1)
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr


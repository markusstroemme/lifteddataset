@CWE476_NULL_Pointer_Dereference__char_68_badData = external local_unnamed_addr global i64
@global_var_4a58f = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_a80f:
  store i64 0, ptr @CWE476_NULL_Pointer_Dereference__char_68_badData, align 8
  call void @anon1()
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_a8b5:
  %0 = load i64, ptr @CWE476_NULL_Pointer_Dereference__char_68_badData, align 8
  %1 = inttoptr i64 %0 to ptr
  %2 = load i8, ptr %1, align 1
  call void @printHexCharLine(i8 %2)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3cca9:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a58f, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr


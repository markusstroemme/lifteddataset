@CWE190_Integer_Overflow__int_listen_socket_preinc_68_goodG2BData = external local_unnamed_addr global i32
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_44cea:
  store i32 2, ptr @CWE190_Integer_Overflow__int_listen_socket_preinc_68_goodG2BData, align 4
  call void @anon0()
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_44ec9:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_listen_socket_preinc_68_goodG2BData, align 4
  %1 = add i32 %0, 1
  call void @printIntLine(i32 %1)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr


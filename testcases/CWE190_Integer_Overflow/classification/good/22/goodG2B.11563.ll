@CWE190_Integer_Overflow__int_listen_socket_preinc_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_40a86:
  store i32 1, ptr @CWE190_Integer_Overflow__int_listen_socket_preinc_22_goodG2BGlobal, align 4
  call void @anon0(i32 2)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_40bb5:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_listen_socket_preinc_22_goodG2BGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_40be2, label %dec_label_pc_40bce

dec_label_pc_40bce:                               ; preds = %dec_label_pc_40bb5
  %2 = add i32 %data, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_40be2

dec_label_pc_40be2:                               ; preds = %dec_label_pc_40bce, %dec_label_pc_40bb5
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr


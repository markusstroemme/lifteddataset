@CWE476_NULL_Pointer_Dereference__long_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_14a21:
  %data_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  store i32 1, ptr @CWE476_NULL_Pointer_Dereference__long_22_goodG2BGlobal, align 4
  %1 = bitcast ptr %data_-32 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_14a77, label %dec_label_pc_14a72

dec_label_pc_14a72:                               ; preds = %dec_label_pc_14a21
  call void @__stack_chk_fail()
  br label %dec_label_pc_14a77

dec_label_pc_14a77:                               ; preds = %dec_label_pc_14a72, %dec_label_pc_14a21
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_14b67:
  %0 = load i32, ptr @CWE476_NULL_Pointer_Dereference__long_22_goodG2BGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_14b90, label %dec_label_pc_14b81

dec_label_pc_14b81:                               ; preds = %dec_label_pc_14b67
  %2 = ptrtoint ptr %data to i64
  call void @printLongLine(i64 %2)
  br label %dec_label_pc_14b90

dec_label_pc_14b90:                               ; preds = %dec_label_pc_14b81, %dec_label_pc_14b67
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


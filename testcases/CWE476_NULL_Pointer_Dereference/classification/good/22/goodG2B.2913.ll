@CWE476_NULL_Pointer_Dereference__int64_t_22_goodG2BGlobal = external local_unnamed_addr global i32
@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_d757:
  %data_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  store i32 1, ptr @CWE476_NULL_Pointer_Dereference__int64_t_22_goodG2BGlobal, align 4
  %1 = bitcast ptr %data_-32 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_d7ad, label %dec_label_pc_d7a8

dec_label_pc_d7a8:                                ; preds = %dec_label_pc_d757
  call void @__stack_chk_fail()
  br label %dec_label_pc_d7ad

dec_label_pc_d7ad:                                ; preds = %dec_label_pc_d7a8, %dec_label_pc_d757
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_d89d:
  %0 = load i32, ptr @CWE476_NULL_Pointer_Dereference__int64_t_22_goodG2BGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_d8c6, label %dec_label_pc_d8b7

dec_label_pc_d8b7:                                ; preds = %dec_label_pc_d89d
  %2 = ptrtoint ptr %data to i64
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_d8c6

dec_label_pc_d8c6:                                ; preds = %dec_label_pc_d8b7, %dec_label_pc_d89d
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


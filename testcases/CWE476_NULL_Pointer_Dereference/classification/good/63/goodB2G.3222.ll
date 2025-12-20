@global_var_4818f = external constant [13 x i8]
@global_var_4a585 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_e7eb:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_e82f, label %dec_label_pc_e82a

dec_label_pc_e82a:                                ; preds = %dec_label_pc_e7eb
  call void @__stack_chk_fail()
  br label %dec_label_pc_e82f

dec_label_pc_e82f:                                ; preds = %dec_label_pc_e82a, %dec_label_pc_e7eb
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_e8aa:
  %0 = icmp eq ptr %dataPtr, null
  br i1 %0, label %dec_label_pc_e8dd, label %dec_label_pc_e8cc

dec_label_pc_e8cc:                                ; preds = %dec_label_pc_e8aa
  %1 = ptrtoint ptr %dataPtr to i64
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_e8ec

dec_label_pc_e8dd:                                ; preds = %dec_label_pc_e8aa
  call void @printLine(ptr @global_var_4818f)
  br label %dec_label_pc_e8ec

dec_label_pc_e8ec:                                ; preds = %dec_label_pc_e8dd, %dec_label_pc_e8cc
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
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

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


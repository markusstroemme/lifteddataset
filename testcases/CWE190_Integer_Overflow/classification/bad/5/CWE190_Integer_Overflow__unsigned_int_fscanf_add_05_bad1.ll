@global_var_67640 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c018 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f1ce:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c018, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_f239, label %dec_label_pc_f21c

dec_label_pc_f21c:                                ; preds = %dec_label_pc_f1ce
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_67640, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_9c018, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_f239, label %dec_label_pc_f226

dec_label_pc_f226:                                ; preds = %dec_label_pc_f21c
  %6 = load i32, ptr %stack_var_-24, align 4
  %7 = add i32 %6, 1
  call void @printUnsignedLine(i32 %7)
  br label %dec_label_pc_f239

dec_label_pc_f239:                                ; preds = %dec_label_pc_f1ce, %dec_label_pc_f226, %dec_label_pc_f21c
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_f24e, label %dec_label_pc_f249

dec_label_pc_f249:                                ; preds = %dec_label_pc_f239
  call void @__stack_chk_fail()
  br label %dec_label_pc_f24e

dec_label_pc_f24e:                                ; preds = %dec_label_pc_f249, %dec_label_pc_f239
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


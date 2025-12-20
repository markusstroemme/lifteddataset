@global_var_677d8 = external constant [3 x i8]
@global_var_677f0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c068 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_10035:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c068, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_100b9, label %dec_label_pc_10083

dec_label_pc_10083:                               ; preds = %dec_label_pc_10035
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_677d8, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_9c068, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_100b9, label %dec_label_pc_1008d

dec_label_pc_1008d:                               ; preds = %dec_label_pc_10083
  %6 = load i32, ptr %stack_var_-24, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_100aa, label %dec_label_pc_10095

dec_label_pc_10095:                               ; preds = %dec_label_pc_1008d
  %8 = add i32 %6, 1
  call void @printUnsignedLine(i32 %8)
  br label %dec_label_pc_100b9

dec_label_pc_100aa:                               ; preds = %dec_label_pc_1008d
  call void @printLine(ptr @global_var_677f0)
  br label %dec_label_pc_100b9

dec_label_pc_100b9:                               ; preds = %dec_label_pc_10035, %dec_label_pc_100aa, %dec_label_pc_10095, %dec_label_pc_10083
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_100ce, label %dec_label_pc_100c9

dec_label_pc_100c9:                               ; preds = %dec_label_pc_100b9
  call void @__stack_chk_fail()
  br label %dec_label_pc_100ce

dec_label_pc_100ce:                               ; preds = %dec_label_pc_100c9, %dec_label_pc_100b9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


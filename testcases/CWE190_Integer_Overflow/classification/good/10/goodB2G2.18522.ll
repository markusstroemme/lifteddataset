@global_var_8ad68 = external constant [3 x i8]
@global_var_8ad80 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5dd8f:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_bc0a0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5de19, label %dec_label_pc_5dddd

dec_label_pc_5dddd:                               ; preds = %dec_label_pc_5dd8f
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_8ad68, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_bc0a0, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_5de19, label %dec_label_pc_5dde7

dec_label_pc_5dde7:                               ; preds = %dec_label_pc_5dddd
  %6 = load i32, ptr %stack_var_-24, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_5de0a, label %dec_label_pc_5ddef

dec_label_pc_5ddef:                               ; preds = %dec_label_pc_5dde7
  %8 = add i32 %6, 1
  store i32 %8, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %8)
  br label %dec_label_pc_5de19

dec_label_pc_5de0a:                               ; preds = %dec_label_pc_5dde7
  call void @printLine(ptr @global_var_8ad80)
  br label %dec_label_pc_5de19

dec_label_pc_5de19:                               ; preds = %dec_label_pc_5dd8f, %dec_label_pc_5de0a, %dec_label_pc_5ddef, %dec_label_pc_5dddd
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_5de2e, label %dec_label_pc_5de29

dec_label_pc_5de29:                               ; preds = %dec_label_pc_5de19
  call void @__stack_chk_fail()
  br label %dec_label_pc_5de2e

dec_label_pc_5de2e:                               ; preds = %dec_label_pc_5de29, %dec_label_pc_5de19
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


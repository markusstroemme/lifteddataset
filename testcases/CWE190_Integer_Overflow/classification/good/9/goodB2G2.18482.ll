@global_var_8ad18 = external constant [3 x i8]
@global_var_8ad30 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_5dae6:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8ad18, ptr nonnull %stack_var_-24)
  %3 = load i32, ptr %stack_var_-24, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %dec_label_pc_5db61, label %dec_label_pc_5db46

dec_label_pc_5db46:                               ; preds = %dec_label_pc_5dae6
  %5 = add i32 %3, 1
  store i32 %5, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_5db70

dec_label_pc_5db61:                               ; preds = %dec_label_pc_5dae6
  call void @printLine(ptr @global_var_8ad30)
  br label %dec_label_pc_5db70

dec_label_pc_5db70:                               ; preds = %dec_label_pc_5db61, %dec_label_pc_5db46
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_5db85, label %dec_label_pc_5db80

dec_label_pc_5db80:                               ; preds = %dec_label_pc_5db70
  call void @__stack_chk_fail()
  br label %dec_label_pc_5db85

dec_label_pc_5db85:                               ; preds = %dec_label_pc_5db80, %dec_label_pc_5db70
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


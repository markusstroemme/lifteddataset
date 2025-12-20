@global_var_8adb8 = external constant [3 x i8]
@global_var_8adbb = external constant [21 x i8]
@global_var_8add0 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_5df8e:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5dfe0, label %dec_label_pc_5dfbe

dec_label_pc_5dfbe:                               ; preds = %dec_label_pc_5df8e
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_8adb8, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_5dfe0

dec_label_pc_5dfe0:                               ; preds = %dec_label_pc_5dfbe, %dec_label_pc_5df8e
  %5 = call i32 @globalReturnsFalse()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_5dfff, label %dec_label_pc_5dfee

dec_label_pc_5dfee:                               ; preds = %dec_label_pc_5dfe0
  call void @printLine(ptr @global_var_8adbb)
  br label %dec_label_pc_5e031

dec_label_pc_5dfff:                               ; preds = %dec_label_pc_5dfe0
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_5e022, label %dec_label_pc_5e007

dec_label_pc_5e007:                               ; preds = %dec_label_pc_5dfff
  %9 = add i32 %7, 1
  store i32 %9, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_5e031

dec_label_pc_5e022:                               ; preds = %dec_label_pc_5dfff
  call void @printLine(ptr @global_var_8add0)
  br label %dec_label_pc_5e031

dec_label_pc_5e031:                               ; preds = %dec_label_pc_5e022, %dec_label_pc_5e007, %dec_label_pc_5dfee
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_5e046, label %dec_label_pc_5e041

dec_label_pc_5e041:                               ; preds = %dec_label_pc_5e031
  call void @__stack_chk_fail()
  br label %dec_label_pc_5e046

dec_label_pc_5e046:                               ; preds = %dec_label_pc_5e041, %dec_label_pc_5e031
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_6a669:
  ret i32 0
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


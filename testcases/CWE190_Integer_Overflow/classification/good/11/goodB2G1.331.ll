@global_var_81748 = external constant [3 x i8]
@global_var_8174b = external constant [21 x i8]
@global_var_81760 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_999a:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_99e9, label %dec_label_pc_99c7

dec_label_pc_99c7:                                ; preds = %dec_label_pc_999a
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_81748, ptr nonnull %stack_var_-18)
  br label %dec_label_pc_99e9

dec_label_pc_99e9:                                ; preds = %dec_label_pc_99c7, %dec_label_pc_999a
  %5 = call i32 @globalReturnsFalse()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_9a08, label %dec_label_pc_99f7

dec_label_pc_99f7:                                ; preds = %dec_label_pc_99e9
  call void @printLine(ptr @global_var_8174b)
  br label %dec_label_pc_9a3d

dec_label_pc_9a08:                                ; preds = %dec_label_pc_99e9
  %7 = load i8, ptr %stack_var_-18, align 1
  %8 = icmp eq i8 %7, 127
  br i1 %8, label %dec_label_pc_9a2e, label %dec_label_pc_9a10

dec_label_pc_9a10:                                ; preds = %dec_label_pc_9a08
  %9 = add i8 %7, 1
  store i8 %9, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_9a3d

dec_label_pc_9a2e:                                ; preds = %dec_label_pc_9a08
  call void @printLine(ptr @global_var_81760)
  br label %dec_label_pc_9a3d

dec_label_pc_9a3d:                                ; preds = %dec_label_pc_9a2e, %dec_label_pc_9a10, %dec_label_pc_99f7
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_9a52, label %dec_label_pc_9a4d

dec_label_pc_9a4d:                                ; preds = %dec_label_pc_9a3d
  call void @__stack_chk_fail()
  br label %dec_label_pc_9a52

dec_label_pc_9a52:                                ; preds = %dec_label_pc_9a4d, %dec_label_pc_9a3d
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
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


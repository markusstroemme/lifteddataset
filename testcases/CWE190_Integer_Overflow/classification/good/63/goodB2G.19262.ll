@global_var_8b389 = external constant [3 x i8]
@global_var_8b390 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_60b1b:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8b389, ptr nonnull %stack_var_-20)
  call void @anon0(ptr nonnull %stack_var_-20)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_60b80, label %dec_label_pc_60b7b

dec_label_pc_60b7b:                               ; preds = %dec_label_pc_60b1b
  call void @__stack_chk_fail()
  br label %dec_label_pc_60b80

dec_label_pc_60b80:                               ; preds = %dec_label_pc_60b7b, %dec_label_pc_60b1b
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_60c01:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %dec_label_pc_60c36, label %dec_label_pc_60c20

dec_label_pc_60c20:                               ; preds = %dec_label_pc_60c01
  %4 = add i32 %2, 1
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_60c45

dec_label_pc_60c36:                               ; preds = %dec_label_pc_60c01
  call void @printLine(ptr @global_var_8b390)
  br label %dec_label_pc_60c45

dec_label_pc_60c45:                               ; preds = %dec_label_pc_60c36, %dec_label_pc_60c20
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


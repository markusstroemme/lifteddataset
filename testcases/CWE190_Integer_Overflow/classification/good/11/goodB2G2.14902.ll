@global_var_89048 = external constant [4 x i8]
@global_var_89068 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_4f75c:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4f7ad, label %dec_label_pc_4f78b

dec_label_pc_4f78b:                               ; preds = %dec_label_pc_4f75c
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_89048, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_4f7ad

dec_label_pc_4f7ad:                               ; preds = %dec_label_pc_4f78b, %dec_label_pc_4f75c
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_4f7f4, label %dec_label_pc_4f7bb

dec_label_pc_4f7bb:                               ; preds = %dec_label_pc_4f7ad
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_4f7e5, label %dec_label_pc_4f7c5

dec_label_pc_4f7c5:                               ; preds = %dec_label_pc_4f7bb
  %9 = add i16 %7, 1
  store i16 %9, ptr %stack_var_-20, align 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_4f7f4

dec_label_pc_4f7e5:                               ; preds = %dec_label_pc_4f7bb
  call void @printLine(ptr @global_var_89068)
  br label %dec_label_pc_4f7f4

dec_label_pc_4f7f4:                               ; preds = %dec_label_pc_4f7e5, %dec_label_pc_4f7c5, %dec_label_pc_4f7ad
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_4f809, label %dec_label_pc_4f804

dec_label_pc_4f804:                               ; preds = %dec_label_pc_4f7f4
  call void @__stack_chk_fail()
  br label %dec_label_pc_4f809

dec_label_pc_4f809:                               ; preds = %dec_label_pc_4f804, %dec_label_pc_4f7f4
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


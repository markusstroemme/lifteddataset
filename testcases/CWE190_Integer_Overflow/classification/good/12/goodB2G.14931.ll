@global_var_890a0 = external constant [4 x i8]
@global_var_890a8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_4f9d0:
  %stack_var_-22 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-22, align 2
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = load ptr, ptr @global_var_bc0b0, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_890a0, ptr nonnull %stack_var_-22)
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  %6 = load i16, ptr %stack_var_-22, align 2
  %7 = icmp eq i16 %6, 32767
  br i1 %5, label %dec_label_pc_4fa8e, label %dec_label_pc_4fa53

dec_label_pc_4fa53:                               ; preds = %dec_label_pc_4f9d0
  br i1 %7, label %dec_label_pc_4fa7d, label %dec_label_pc_4fa5d

dec_label_pc_4fa5d:                               ; preds = %dec_label_pc_4fa53
  %8 = add i16 %6, 1
  store i16 %8, ptr %stack_var_-22, align 2
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_4fac7

dec_label_pc_4fa7d:                               ; preds = %dec_label_pc_4fa53
  call void @printLine(ptr @global_var_890a8)
  br label %dec_label_pc_4fac7

dec_label_pc_4fa8e:                               ; preds = %dec_label_pc_4f9d0
  br i1 %7, label %dec_label_pc_4fab8, label %dec_label_pc_4fa98

dec_label_pc_4fa98:                               ; preds = %dec_label_pc_4fa8e
  %10 = add i16 %6, 1
  store i16 %10, ptr %stack_var_-22, align 2
  %11 = sext i16 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_4fac7

dec_label_pc_4fab8:                               ; preds = %dec_label_pc_4fa8e
  call void @printLine(ptr @global_var_890a8)
  br label %dec_label_pc_4fac7

dec_label_pc_4fac7:                               ; preds = %dec_label_pc_4fab8, %dec_label_pc_4fa98, %dec_label_pc_4fa7d, %dec_label_pc_4fa5d
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_4fadc, label %dec_label_pc_4fad7

dec_label_pc_4fad7:                               ; preds = %dec_label_pc_4fac7
  call void @__stack_chk_fail()
  br label %dec_label_pc_4fadc

dec_label_pc_4fadc:                               ; preds = %dec_label_pc_4fad7, %dec_label_pc_4fac7
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


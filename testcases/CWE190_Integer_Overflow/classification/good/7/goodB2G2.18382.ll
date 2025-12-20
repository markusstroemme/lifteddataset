@global_var_8ac78 = external constant [3 x i8]
@global_var_8ac90 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc08c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5d548:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_bc08c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_5d597, label %dec_label_pc_5d575

dec_label_pc_5d575:                               ; preds = %dec_label_pc_5d548
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_8ac78, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_bc08c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_5d597

dec_label_pc_5d597:                               ; preds = %dec_label_pc_5d575, %dec_label_pc_5d548
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_5d5d4, label %dec_label_pc_5d5a2

dec_label_pc_5d5a2:                               ; preds = %dec_label_pc_5d597
  %8 = load i32, ptr %stack_var_-24, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_5d5c5, label %dec_label_pc_5d5aa

dec_label_pc_5d5aa:                               ; preds = %dec_label_pc_5d5a2
  %10 = add i32 %8, 1
  store i32 %10, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %10)
  br label %dec_label_pc_5d5d4

dec_label_pc_5d5c5:                               ; preds = %dec_label_pc_5d5a2
  call void @printLine(ptr @global_var_8ac90)
  br label %dec_label_pc_5d5d4

dec_label_pc_5d5d4:                               ; preds = %dec_label_pc_5d5c5, %dec_label_pc_5d5aa, %dec_label_pc_5d597
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_5d5e9, label %dec_label_pc_5d5e4

dec_label_pc_5d5e4:                               ; preds = %dec_label_pc_5d5d4
  call void @__stack_chk_fail()
  br label %dec_label_pc_5d5e9

dec_label_pc_5d5e9:                               ; preds = %dec_label_pc_5d5e4, %dec_label_pc_5d5d4
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


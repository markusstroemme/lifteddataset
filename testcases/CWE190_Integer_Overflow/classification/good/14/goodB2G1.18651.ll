@global_var_8ae98 = external constant [3 x i8]
@global_var_8ae9b = external constant [21 x i8]
@global_var_8aeb0 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5e765:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_bc0a4, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_5e7b4, label %dec_label_pc_5e792

dec_label_pc_5e792:                               ; preds = %dec_label_pc_5e765
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_8ae98, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_bc0a4, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_5e7b4

dec_label_pc_5e7b4:                               ; preds = %dec_label_pc_5e792, %dec_label_pc_5e765
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_5e7d0, label %dec_label_pc_5e7bf

dec_label_pc_5e7bf:                               ; preds = %dec_label_pc_5e7b4
  call void @printLine(ptr @global_var_8ae9b)
  br label %dec_label_pc_5e802

dec_label_pc_5e7d0:                               ; preds = %dec_label_pc_5e7b4
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_5e7f3, label %dec_label_pc_5e7d8

dec_label_pc_5e7d8:                               ; preds = %dec_label_pc_5e7d0
  %9 = add i32 %7, 1
  store i32 %9, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_5e802

dec_label_pc_5e7f3:                               ; preds = %dec_label_pc_5e7d0
  call void @printLine(ptr @global_var_8aeb0)
  br label %dec_label_pc_5e802

dec_label_pc_5e802:                               ; preds = %dec_label_pc_5e7f3, %dec_label_pc_5e7d8, %dec_label_pc_5e7bf
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_5e817, label %dec_label_pc_5e812

dec_label_pc_5e812:                               ; preds = %dec_label_pc_5e802
  call void @__stack_chk_fail()
  br label %dec_label_pc_5e817

dec_label_pc_5e817:                               ; preds = %dec_label_pc_5e812, %dec_label_pc_5e802
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


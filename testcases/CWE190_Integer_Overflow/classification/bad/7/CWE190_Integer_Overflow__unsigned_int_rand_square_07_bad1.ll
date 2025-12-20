@staticFive = external local_unnamed_addr global i32
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_33f78:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @staticFive, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_33fe0, label %dec_label_pc_33f97

dec_label_pc_33f97:                               ; preds = %dec_label_pc_33f78
  %3 = call i32 @rand()
  %4 = urem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = call i32 @rand()
  %7 = mul i32 %6, 1073741824
  %8 = call i32 @rand()
  %9 = mul i32 %8, 32768
  %10 = xor i32 %9, %7
  %11 = call i32 @rand()
  %12 = xor i32 %10, %11
  %13 = sext i1 %5 to i32
  %storemerge.in = xor i32 %12, %13
  %.pre = load i32, ptr @staticFive, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  store i32 %storemerge.in, ptr %stack_var_-32.0.reg2mem, align 4
  br label %dec_label_pc_33fe0

dec_label_pc_33fe0:                               ; preds = %dec_label_pc_33f97, %dec_label_pc_33f78
  %.reload = load i32, ptr %.reg2mem, align 4
  %14 = icmp eq i32 %.reload, 5
  %15 = icmp eq i1 %14, false
  br i1 %15, label %dec_label_pc_33ffe, label %dec_label_pc_33feb

dec_label_pc_33feb:                               ; preds = %dec_label_pc_33fe0
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %16 = mul i32 %stack_var_-32.0.reload, %stack_var_-32.0.reload
  call void @printUnsignedLine(i32 %16)
  br label %dec_label_pc_33ffe

dec_label_pc_33ffe:                               ; preds = %dec_label_pc_33feb, %dec_label_pc_33fe0
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr


@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2f561:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrue()
  %1 = icmp eq i32 %0, 0
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_2f5cc, label %dec_label_pc_2f583

dec_label_pc_2f583:                               ; preds = %dec_label_pc_2f561
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = mul i32 %5, 1073741824
  %7 = call i32 @rand()
  %8 = mul i32 %7, 32768
  %9 = xor i32 %8, %6
  %10 = call i32 @rand()
  %11 = xor i32 %9, %10
  %12 = sext i1 %4 to i32
  %storemerge.in = xor i32 %11, %12
  store i32 %storemerge.in, ptr %stack_var_-32.0.reg2mem, align 4
  br label %dec_label_pc_2f5cc

dec_label_pc_2f5cc:                               ; preds = %dec_label_pc_2f583, %dec_label_pc_2f561
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %13 = call i32 @globalReturnsTrue()
  %14 = icmp eq i32 %13, 0
  %15 = icmp eq i32 %stack_var_-32.0.reload, 0
  %or.cond = or i1 %15, %14
  br i1 %or.cond, label %dec_label_pc_2f5f2, label %dec_label_pc_2f5e0

dec_label_pc_2f5e0:                               ; preds = %dec_label_pc_2f5cc
  %16 = mul i32 %stack_var_-32.0.reload, 2
  call void @printUnsignedLine(i32 %16)
  br label %dec_label_pc_2f5f2

dec_label_pc_2f5f2:                               ; preds = %dec_label_pc_2f5e0, %dec_label_pc_2f5cc
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_550e7:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr


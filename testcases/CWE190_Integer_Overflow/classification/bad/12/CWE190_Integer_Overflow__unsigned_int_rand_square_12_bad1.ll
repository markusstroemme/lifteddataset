@global_var_6c6d0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_34de2:
  %storemerge1.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %storemerge1.reg2mem, align 4
  br i1 %1, label %dec_label_pc_34e56, label %dec_label_pc_34e04

dec_label_pc_34e04:                               ; preds = %dec_label_pc_34de2
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
  store i32 %storemerge.in, ptr %storemerge1.reg2mem, align 4
  br label %dec_label_pc_34e56

dec_label_pc_34e56:                               ; preds = %dec_label_pc_34de2, %dec_label_pc_34e04
  %storemerge1.reload = load i32, ptr %storemerge1.reg2mem, align 4
  %13 = call i32 @globalReturnsTrueOrFalse()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_34e79, label %dec_label_pc_34e64

dec_label_pc_34e64:                               ; preds = %dec_label_pc_34e56
  %15 = mul i32 %storemerge1.reload, %storemerge1.reload
  call void @printUnsignedLine(i32 %15)
  br label %dec_label_pc_34eb2

dec_label_pc_34e79:                               ; preds = %dec_label_pc_34e56
  %storemerge1.off = add i32 %storemerge1.reload, 65534
  %16 = icmp ugt i32 %storemerge1.off, 131068
  br i1 %16, label %dec_label_pc_34ea3, label %dec_label_pc_34e8d

dec_label_pc_34e8d:                               ; preds = %dec_label_pc_34e79
  %17 = mul i32 %storemerge1.reload, %storemerge1.reload
  call void @printUnsignedLine(i32 %17)
  br label %dec_label_pc_34eb2

dec_label_pc_34ea3:                               ; preds = %dec_label_pc_34e79
  call void @printLine(ptr @global_var_6c6d0)
  br label %dec_label_pc_34eb2

dec_label_pc_34eb2:                               ; preds = %dec_label_pc_34ea3, %dec_label_pc_34e8d, %dec_label_pc_34e64
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_55105:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


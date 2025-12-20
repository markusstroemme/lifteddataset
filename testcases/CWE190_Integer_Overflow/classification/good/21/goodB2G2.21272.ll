@global_var_8c390 = external constant [54 x i8]
@goodB2G2Static = external local_unnamed_addr global i32
@global_var_8c83e = external constant [4 x i8]

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_67a5c:
  %0 = load i32, ptr @goodB2G2Static, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_67aa0, label %dec_label_pc_67a75

dec_label_pc_67a75:                               ; preds = %dec_label_pc_67a5c
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_67a91, label %dec_label_pc_67a7b

dec_label_pc_67a7b:                               ; preds = %dec_label_pc_67a75
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_67aa0

dec_label_pc_67a91:                               ; preds = %dec_label_pc_67a75
  call void @printLine(ptr @global_var_8c390)
  br label %dec_label_pc_67aa0

dec_label_pc_67aa0:                               ; preds = %dec_label_pc_67a91, %dec_label_pc_67a7b, %dec_label_pc_67a5c
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_67aa3:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  store i32 1, ptr @goodB2G2Static, align 4
  call void @anon0(i32 %storemerge.in)
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr


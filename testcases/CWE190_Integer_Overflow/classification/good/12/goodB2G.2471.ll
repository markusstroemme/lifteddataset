@global_var_70730 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_10c09:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge2.in = xor i32 %10, %11
  %12 = call i32 @globalReturnsTrueOrFalse()
  %13 = icmp eq i32 %12, 0
  %14 = icmp slt i32 %storemerge2.in, 1
  br i1 %13, label %dec_label_pc_10d01, label %dec_label_pc_10ccd

dec_label_pc_10ccd:                               ; preds = %dec_label_pc_10c09
  br i1 %14, label %dec_label_pc_10d33, label %dec_label_pc_10cd3

dec_label_pc_10cd3:                               ; preds = %dec_label_pc_10ccd
  %15 = icmp sgt i32 %storemerge2.in, 1073741822
  br i1 %15, label %dec_label_pc_10cf0, label %dec_label_pc_10cdc

dec_label_pc_10cdc:                               ; preds = %dec_label_pc_10cd3
  %16 = mul i32 %storemerge2.in, 2
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_10d33

dec_label_pc_10cf0:                               ; preds = %dec_label_pc_10cd3
  call void @printLine(ptr @global_var_70730)
  br label %dec_label_pc_10d33

dec_label_pc_10d01:                               ; preds = %dec_label_pc_10c09
  br i1 %14, label %dec_label_pc_10d33, label %dec_label_pc_10d07

dec_label_pc_10d07:                               ; preds = %dec_label_pc_10d01
  %17 = icmp sgt i32 %storemerge2.in, 1073741822
  br i1 %17, label %dec_label_pc_10d24, label %dec_label_pc_10d10

dec_label_pc_10d10:                               ; preds = %dec_label_pc_10d07
  %18 = mul i32 %storemerge2.in, 2
  call void @printIntLine(i32 %18)
  br label %dec_label_pc_10d33

dec_label_pc_10d24:                               ; preds = %dec_label_pc_10d07
  call void @printLine(ptr @global_var_70730)
  br label %dec_label_pc_10d33

dec_label_pc_10d33:                               ; preds = %dec_label_pc_10d24, %dec_label_pc_10d10, %dec_label_pc_10d01, %dec_label_pc_10cf0, %dec_label_pc_10cdc, %dec_label_pc_10ccd
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5e329:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


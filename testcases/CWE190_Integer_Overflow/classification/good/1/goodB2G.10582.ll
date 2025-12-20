@global_var_70a18 = external constant [54 x i8]
@global_var_76cf3 = external constant [6 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2cbc3:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = sub i32 0, %5
  %7 = sub i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = sext i32 %5 to i64
  %storemerge = select i1 %2, i64 %8, i64 %9
  %10 = trunc i64 %storemerge to i8
  %11 = sub i8 0, %10
  %12 = icmp slt i8 %11, 0
  %13 = icmp eq i1 %12, false
  %14 = select i1 %13, i8 %11, i8 %10
  %15 = icmp ult i8 %14, 12
  br i1 %15, label %dec_label_pc_2cc13, label %dec_label_pc_2cc2e

dec_label_pc_2cc13:                               ; preds = %dec_label_pc_2cbc3
  %16 = trunc i64 %storemerge to i32
  %17 = urem i32 %16, 256
  %narrow = mul nuw nsw i32 %17, %17
  %18 = trunc i32 %narrow to i8
  call void @printHexCharLine(i8 %18)
  br label %dec_label_pc_2cc3d

dec_label_pc_2cc2e:                               ; preds = %dec_label_pc_2cbc3
  call void @printLine(ptr @global_var_70a18)
  br label %dec_label_pc_2cc3d

dec_label_pc_2cc3d:                               ; preds = %dec_label_pc_2cc2e, %dec_label_pc_2cc13
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


@global_var_674b8 = external constant [54 x i8]
@global_var_70d7c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_e6a7:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = mul i32 %4, 32768
  %6 = call i32 @rand()
  %7 = xor i32 %6, %5
  %8 = sext i1 %2 to i32
  %storemerge.in = xor i32 %7, %8
  %9 = urem i32 %storemerge.in, 65536
  %10 = zext i32 %9 to i64
  call void @anon0(i64 %10)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_e79d:
  %0 = trunc i64 %myStruct to i16
  %1 = sub i16 0, %0
  %2 = icmp slt i16 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = select i1 %3, i16 %1, i16 %0
  %5 = icmp ult i16 %4, 182
  br i1 %5, label %dec_label_pc_e7c7, label %dec_label_pc_e7e3

dec_label_pc_e7c7:                                ; preds = %dec_label_pc_e79d
  %6 = urem i64 %myStruct, 65536
  %7 = mul nuw nsw i64 %6, %6
  %8 = trunc i64 %7 to i32
  %sext2 = mul i32 %8, 65536
  %9 = ashr exact i32 %sext2, 16
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_e7f2

dec_label_pc_e7e3:                                ; preds = %dec_label_pc_e79d
  call void @printLine(ptr @global_var_674b8)
  br label %dec_label_pc_e7f2

dec_label_pc_e7f2:                                ; preds = %dec_label_pc_e7e3, %dec_label_pc_e7c7
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_54c32:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_70d7c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


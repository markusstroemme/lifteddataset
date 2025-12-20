@global_var_70d08 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_140f5:
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
  %storemerge = zext i32 %storemerge.in to i64
  call void @anon0(i64 %storemerge)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_141e8:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_1422f, label %dec_label_pc_14203

dec_label_pc_14203:                               ; preds = %dec_label_pc_141e8
  %2 = icmp sgt i32 %0, 1073741822
  br i1 %2, label %dec_label_pc_14220, label %dec_label_pc_1420c

dec_label_pc_1420c:                               ; preds = %dec_label_pc_14203
  %3 = mul i32 %0, 2
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_1422f

dec_label_pc_14220:                               ; preds = %dec_label_pc_14203
  call void @printLine(ptr @global_var_70d08)
  br label %dec_label_pc_1422f

dec_label_pc_1422f:                               ; preds = %dec_label_pc_14220, %dec_label_pc_1420c, %dec_label_pc_141e8
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


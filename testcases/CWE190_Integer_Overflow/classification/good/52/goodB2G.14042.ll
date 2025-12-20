@global_var_76428 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_3dd49:
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
  %9 = trunc i32 %storemerge.in to i16
  call void @anon0(i16 %9)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_3de0d:
  call void @anon1(i16 %data)
  ret void
}

define void @anon1(i16 %data) local_unnamed_addr {
dec_label_pc_3de8f:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3dea8

dec_label_pc_3dea8:                               ; preds = %dec_label_pc_3de8f
  %1 = icmp sgt i16 %data, 16382
  br i1 %1, label %dec_label_pc_3dec7, label %dec_label_pc_3deb0

dec_label_pc_3deb0:                               ; preds = %dec_label_pc_3dea8
  %2 = mul i16 %data, 2
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_3ded6

dec_label_pc_3dec7:                               ; preds = %dec_label_pc_3dea8
  call void @printLine(ptr @global_var_76428)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3dec7, %dec_label_pc_3deb0, %dec_label_pc_3de8f
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


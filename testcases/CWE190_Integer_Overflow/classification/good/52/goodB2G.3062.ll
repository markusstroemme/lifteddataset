@global_var_70b48 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_12f1e:
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
  call void @anon0(i32 %storemerge.in)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_12fe3:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_13053:
  %0 = icmp slt i32 %data, 1
  br i1 %0, label %dec_label_pc_13094, label %dec_label_pc_13068

dec_label_pc_13068:                               ; preds = %dec_label_pc_13053
  %1 = icmp sgt i32 %data, 1073741822
  br i1 %1, label %dec_label_pc_13085, label %dec_label_pc_13071

dec_label_pc_13071:                               ; preds = %dec_label_pc_13068
  %2 = mul i32 %data, 2
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_13094

dec_label_pc_13085:                               ; preds = %dec_label_pc_13068
  call void @printLine(ptr @global_var_70b48)
  br label %dec_label_pc_13094

dec_label_pc_13094:                               ; preds = %dec_label_pc_13085, %dec_label_pc_13071, %dec_label_pc_13053
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


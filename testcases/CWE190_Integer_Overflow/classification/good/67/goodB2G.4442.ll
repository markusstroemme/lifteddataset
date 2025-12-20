@global_var_71688 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_197c3:
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
dec_label_pc_198ac:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, -2147483648
  br i1 %1, label %dec_label_pc_198f1, label %dec_label_pc_198ca

dec_label_pc_198ca:                               ; preds = %dec_label_pc_198ac
  %sext = mul i64 %myStruct, 4294967296
  %2 = ashr exact i64 %sext, 32
  %3 = trunc i64 %2 to i32
  %.off = add i32 %3, 46339
  %4 = icmp ugt i32 %.off, 92678
  br i1 %4, label %dec_label_pc_198f1, label %dec_label_pc_198dc

dec_label_pc_198dc:                               ; preds = %dec_label_pc_198ca
  %5 = mul nsw i64 %2, %2
  %6 = trunc i64 %5 to i32
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_19901

dec_label_pc_198f1:                               ; preds = %dec_label_pc_198ca, %dec_label_pc_198ac
  call void @printLine(ptr @global_var_71688)
  br label %dec_label_pc_19901

dec_label_pc_19901:                               ; preds = %dec_label_pc_198f1, %dec_label_pc_198dc
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


@global_var_88888 = external constant [21 x i8]
@global_var_888a0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc37c = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_4b45a:
  %0 = load i32, ptr @global_var_bc37c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_4b484, label %dec_label_pc_4b473

dec_label_pc_4b473:                               ; preds = %dec_label_pc_4b45a
  call void @printLine(ptr @global_var_88888)
  br label %dec_label_pc_4b4b2

dec_label_pc_4b484:                               ; preds = %dec_label_pc_4b45a
  %2 = icmp eq i32 %data, 2147483647
  br i1 %2, label %dec_label_pc_4b4a3, label %dec_label_pc_4b48d

dec_label_pc_4b48d:                               ; preds = %dec_label_pc_4b484
  %3 = add i32 %data, 1
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_4b4b2

dec_label_pc_4b4a3:                               ; preds = %dec_label_pc_4b484
  call void @printLine(ptr @global_var_888a0)
  br label %dec_label_pc_4b4b2

dec_label_pc_4b4b2:                               ; preds = %dec_label_pc_4b4a3, %dec_label_pc_4b48d, %dec_label_pc_4b473
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_4b4b5:
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
  store i32 0, ptr @global_var_bc37c, align 4
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr


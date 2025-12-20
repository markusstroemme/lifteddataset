@global_var_708e8 = external constant [21 x i8]
@global_var_70900 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a90d0 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_11b25:
  %0 = load i32, ptr @global_var_a90d0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_11b4f, label %dec_label_pc_11b3e

dec_label_pc_11b3e:                               ; preds = %dec_label_pc_11b25
  call void @printLine(ptr @global_var_708e8)
  br label %dec_label_pc_11b81

dec_label_pc_11b4f:                               ; preds = %dec_label_pc_11b25
  %2 = icmp slt i32 %data, 1
  br i1 %2, label %dec_label_pc_11b81, label %dec_label_pc_11b55

dec_label_pc_11b55:                               ; preds = %dec_label_pc_11b4f
  %3 = icmp sgt i32 %data, 1073741822
  br i1 %3, label %dec_label_pc_11b72, label %dec_label_pc_11b5e

dec_label_pc_11b5e:                               ; preds = %dec_label_pc_11b55
  %4 = mul i32 %data, 2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_11b81

dec_label_pc_11b72:                               ; preds = %dec_label_pc_11b55
  call void @printLine(ptr @global_var_70900)
  br label %dec_label_pc_11b81

dec_label_pc_11b81:                               ; preds = %dec_label_pc_11b72, %dec_label_pc_11b5e, %dec_label_pc_11b4f, %dec_label_pc_11b3e
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_11b84:
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
  store i32 0, ptr @global_var_a90d0, align 4
  call void @anon0(i32 %storemerge.in)
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


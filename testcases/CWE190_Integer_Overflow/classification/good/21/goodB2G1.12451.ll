@global_var_75848 = external constant [21 x i8]
@global_var_75860 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9268 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_375c1:
  %0 = load i32, ptr @global_var_a9268, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_375ee, label %dec_label_pc_375dd

dec_label_pc_375dd:                               ; preds = %dec_label_pc_375c1
  call void @printLine(ptr @global_var_75848)
  br label %dec_label_pc_3761d

dec_label_pc_375ee:                               ; preds = %dec_label_pc_375c1
  %2 = icmp eq i16 %data, 32767
  br i1 %2, label %dec_label_pc_3760e, label %dec_label_pc_375f6

dec_label_pc_375f6:                               ; preds = %dec_label_pc_375ee
  %3 = add i16 %data, 1
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_3761d

dec_label_pc_3760e:                               ; preds = %dec_label_pc_375ee
  call void @printLine(ptr @global_var_75860)
  br label %dec_label_pc_3761d

dec_label_pc_3761d:                               ; preds = %dec_label_pc_3760e, %dec_label_pc_375f6, %dec_label_pc_375dd
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_37620:
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
  store i32 0, ptr @global_var_a9268, align 4
  %9 = trunc i32 %storemerge.in to i16
  call void @anon0(i16 %9)
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


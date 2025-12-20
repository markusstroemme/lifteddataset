@global_var_73a10 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2a699:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i32 2, i32 32767
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_2a6ed, label %dec_label_pc_2a6d5

dec_label_pc_2a6d5:                               ; preds = %dec_label_pc_2a699
  %4 = mul i32 %., 65536
  %sext = add nuw i32 %4, 65536
  %5 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_2a71c

dec_label_pc_2a6ed:                               ; preds = %dec_label_pc_2a699
  br i1 %1, label %dec_label_pc_2a6f5, label %dec_label_pc_2a70d

dec_label_pc_2a6f5:                               ; preds = %dec_label_pc_2a6ed
  %6 = mul i32 %., 65536
  %sext2 = add nuw i32 %6, 65536
  %7 = ashr exact i32 %sext2, 16
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_2a71c

dec_label_pc_2a70d:                               ; preds = %dec_label_pc_2a6ed
  call void @printLine(ptr @global_var_73a10)
  br label %dec_label_pc_2a71c

dec_label_pc_2a71c:                               ; preds = %dec_label_pc_2a70d, %dec_label_pc_2a6f5, %dec_label_pc_2a6d5
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


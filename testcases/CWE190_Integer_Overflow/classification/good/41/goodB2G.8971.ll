@global_var_73d10 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2b8c3:
  %0 = icmp eq i16 %data, 32767
  br i1 %0, label %dec_label_pc_2b8f5, label %dec_label_pc_2b8dd

dec_label_pc_2b8dd:                               ; preds = %dec_label_pc_2b8c3
  %1 = add i16 %data, 1
  %2 = sext i16 %1 to i32
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_2b904

dec_label_pc_2b8f5:                               ; preds = %dec_label_pc_2b8c3
  call void @printLine(ptr @global_var_73d10)
  br label %dec_label_pc_2b904

dec_label_pc_2b904:                               ; preds = %dec_label_pc_2b8f5, %dec_label_pc_2b8dd
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2b907:
  call void @anon0(i16 32767)
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

declare i32 @puts(ptr) local_unnamed_addr


@global_var_74770 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2faf3:
  call void @anon0(i16 32767)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2fb9a:
  %0 = icmp slt i16 %data, 1
  br i1 %0, label %dec_label_pc_2fbe1, label %dec_label_pc_2fbb3

dec_label_pc_2fbb3:                               ; preds = %dec_label_pc_2fb9a
  %1 = icmp sgt i16 %data, 16382
  br i1 %1, label %dec_label_pc_2fbd2, label %dec_label_pc_2fbbb

dec_label_pc_2fbbb:                               ; preds = %dec_label_pc_2fbb3
  %2 = mul i16 %data, 2
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_2fbe1

dec_label_pc_2fbd2:                               ; preds = %dec_label_pc_2fbb3
  call void @printLine(ptr @global_var_74770)
  br label %dec_label_pc_2fbe1

dec_label_pc_2fbe1:                               ; preds = %dec_label_pc_2fbd2, %dec_label_pc_2fbbb, %dec_label_pc_2fb9a
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


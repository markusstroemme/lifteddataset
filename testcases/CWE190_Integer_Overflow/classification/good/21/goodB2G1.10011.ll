@global_var_74548 = external constant [21 x i8]
@global_var_74560 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9208 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2eda1:
  %0 = load i32, ptr @global_var_a9208, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2edce, label %dec_label_pc_2edbd

dec_label_pc_2edbd:                               ; preds = %dec_label_pc_2eda1
  call void @printLine(ptr @global_var_74548)
  br label %dec_label_pc_2ee03

dec_label_pc_2edce:                               ; preds = %dec_label_pc_2eda1
  %2 = icmp slt i16 %data, 1
  br i1 %2, label %dec_label_pc_2ee03, label %dec_label_pc_2edd5

dec_label_pc_2edd5:                               ; preds = %dec_label_pc_2edce
  %3 = icmp sgt i16 %data, 16382
  br i1 %3, label %dec_label_pc_2edf4, label %dec_label_pc_2eddd

dec_label_pc_2eddd:                               ; preds = %dec_label_pc_2edd5
  %4 = mul i16 %data, 2
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_2ee03

dec_label_pc_2edf4:                               ; preds = %dec_label_pc_2edd5
  call void @printLine(ptr @global_var_74560)
  br label %dec_label_pc_2ee03

dec_label_pc_2ee03:                               ; preds = %dec_label_pc_2edf4, %dec_label_pc_2eddd, %dec_label_pc_2edce, %dec_label_pc_2edbd
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2ee06:
  store i32 0, ptr @global_var_a9208, align 4
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


@CWE190_Integer_Overflow__short_max_multiply_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_74598 = external constant [21 x i8]
@global_var_745b0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2ef7e:
  store i32 0, ptr @CWE190_Integer_Overflow__short_max_multiply_22_goodB2G1Global, align 4
  call void @anon0(i16 32767)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2f072:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_max_multiply_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2f09f, label %dec_label_pc_2f08e

dec_label_pc_2f08e:                               ; preds = %dec_label_pc_2f072
  call void @printLine(ptr @global_var_74598)
  br label %dec_label_pc_2f0d4

dec_label_pc_2f09f:                               ; preds = %dec_label_pc_2f072
  %2 = icmp slt i16 %data, 1
  br i1 %2, label %dec_label_pc_2f0d4, label %dec_label_pc_2f0a6

dec_label_pc_2f0a6:                               ; preds = %dec_label_pc_2f09f
  %3 = icmp sgt i16 %data, 16382
  br i1 %3, label %dec_label_pc_2f0c5, label %dec_label_pc_2f0ae

dec_label_pc_2f0ae:                               ; preds = %dec_label_pc_2f0a6
  %4 = mul i16 %data, 2
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_2f0d4

dec_label_pc_2f0c5:                               ; preds = %dec_label_pc_2f0a6
  call void @printLine(ptr @global_var_745b0)
  br label %dec_label_pc_2f0d4

dec_label_pc_2f0d4:                               ; preds = %dec_label_pc_2f0c5, %dec_label_pc_2f0ae, %dec_label_pc_2f09f, %dec_label_pc_2f08e
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


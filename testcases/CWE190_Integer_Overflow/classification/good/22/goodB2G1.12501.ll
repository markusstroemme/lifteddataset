@CWE190_Integer_Overflow__short_rand_add_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_75898 = external constant [21 x i8]
@global_var_758b0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_37849:
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
  store i32 0, ptr @CWE190_Integer_Overflow__short_rand_add_22_goodB2G1Global, align 4
  %9 = trunc i32 %storemerge.in to i16
  call void @anon0(i16 %9)
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_379b5:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_rand_add_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_379e2, label %dec_label_pc_379d1

dec_label_pc_379d1:                               ; preds = %dec_label_pc_379b5
  call void @printLine(ptr @global_var_75898)
  br label %dec_label_pc_37a11

dec_label_pc_379e2:                               ; preds = %dec_label_pc_379b5
  %2 = icmp eq i16 %data, 32767
  br i1 %2, label %dec_label_pc_37a02, label %dec_label_pc_379ea

dec_label_pc_379ea:                               ; preds = %dec_label_pc_379e2
  %3 = add i16 %data, 1
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_37a11

dec_label_pc_37a02:                               ; preds = %dec_label_pc_379e2
  call void @printLine(ptr @global_var_758b0)
  br label %dec_label_pc_37a11

dec_label_pc_37a11:                               ; preds = %dec_label_pc_37a02, %dec_label_pc_379ea, %dec_label_pc_379d1
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


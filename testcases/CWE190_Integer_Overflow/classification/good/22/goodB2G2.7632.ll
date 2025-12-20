@global_var_73206 = external constant [4 x i8]
@CWE190_Integer_Overflow__short_fscanf_square_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_73228 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_26e9e:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_73206, ptr nonnull %stack_var_-18)
  store i32 1, ptr @CWE190_Integer_Overflow__short_fscanf_square_22_goodB2G2Global, align 4
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon0(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_26f0c, label %dec_label_pc_26f07

dec_label_pc_26f07:                               ; preds = %dec_label_pc_26e9e
  call void @__stack_chk_fail()
  br label %dec_label_pc_26f0c

dec_label_pc_26f0c:                               ; preds = %dec_label_pc_26f07, %dec_label_pc_26e9e
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2700d:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_fscanf_square_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_27066, label %dec_label_pc_27029

dec_label_pc_27029:                               ; preds = %dec_label_pc_2700d
  %2 = sub i16 0, %data
  %3 = icmp slt i16 %2, 0
  %4 = icmp eq i1 %3, false
  %.v = select i1 %4, i16 %2, i16 %data
  %5 = icmp ult i16 %.v, 182
  br i1 %5, label %dec_label_pc_2703b, label %dec_label_pc_27057

dec_label_pc_2703b:                               ; preds = %dec_label_pc_27029
  %6 = mul i16 %data, %data
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_27066

dec_label_pc_27057:                               ; preds = %dec_label_pc_27029
  call void @printLine(ptr @global_var_73228)
  br label %dec_label_pc_27066

dec_label_pc_27066:                               ; preds = %dec_label_pc_27057, %dec_label_pc_2703b, %dec_label_pc_2700d
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


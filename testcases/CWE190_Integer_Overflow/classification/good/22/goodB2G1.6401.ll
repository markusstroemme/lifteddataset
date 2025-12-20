@global_var_72766 = external constant [4 x i8]
@CWE190_Integer_Overflow__short_fscanf_multiply_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_72770 = external constant [21 x i8]
@global_var_72788 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_219d3:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_72766, ptr nonnull %stack_var_-18)
  store i32 0, ptr @CWE190_Integer_Overflow__short_fscanf_multiply_22_goodB2G1Global, align 4
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon0(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_21a41, label %dec_label_pc_21a3c

dec_label_pc_21a3c:                               ; preds = %dec_label_pc_219d3
  call void @__stack_chk_fail()
  br label %dec_label_pc_21a41

dec_label_pc_21a41:                               ; preds = %dec_label_pc_21a3c, %dec_label_pc_219d3
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_21b47:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_fscanf_multiply_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_21b74, label %dec_label_pc_21b63

dec_label_pc_21b63:                               ; preds = %dec_label_pc_21b47
  call void @printLine(ptr @global_var_72770)
  br label %dec_label_pc_21ba9

dec_label_pc_21b74:                               ; preds = %dec_label_pc_21b47
  %2 = icmp slt i16 %data, 1
  br i1 %2, label %dec_label_pc_21ba9, label %dec_label_pc_21b7b

dec_label_pc_21b7b:                               ; preds = %dec_label_pc_21b74
  %3 = icmp sgt i16 %data, 16382
  br i1 %3, label %dec_label_pc_21b9a, label %dec_label_pc_21b83

dec_label_pc_21b83:                               ; preds = %dec_label_pc_21b7b
  %4 = mul i16 %data, 2
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_21ba9

dec_label_pc_21b9a:                               ; preds = %dec_label_pc_21b7b
  call void @printLine(ptr @global_var_72788)
  br label %dec_label_pc_21ba9

dec_label_pc_21ba9:                               ; preds = %dec_label_pc_21b9a, %dec_label_pc_21b83, %dec_label_pc_21b74, %dec_label_pc_21b63
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


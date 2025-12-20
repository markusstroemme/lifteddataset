@global_var_733e0 = external constant [4 x i8]
@CWE190_Integer_Overflow__short_fscanf_square_45_goodB2GData = external local_unnamed_addr global i16
@global_var_733e8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_27c0c:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_fscanf_square_45_goodB2GData, align 2
  %1 = sub i16 0, %0
  %2 = icmp slt i16 %1, 0
  %3 = icmp eq i1 %2, false
  %.v = select i1 %3, i16 %1, i16 %0
  %4 = icmp ult i16 %.v, 182
  br i1 %4, label %dec_label_pc_27c35, label %dec_label_pc_27c51

dec_label_pc_27c35:                               ; preds = %dec_label_pc_27c0c
  %5 = mul i16 %0, %0
  %6 = sext i16 %5 to i32
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_27c60

dec_label_pc_27c51:                               ; preds = %dec_label_pc_27c0c
  call void @printLine(ptr @global_var_733e8)
  br label %dec_label_pc_27c60

dec_label_pc_27c60:                               ; preds = %dec_label_pc_27c51, %dec_label_pc_27c35
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_27c63:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_733e0, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  store i16 %3, ptr @CWE190_Integer_Overflow__short_fscanf_square_45_goodB2GData, align 2
  call void @anon0()
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_27cd0, label %dec_label_pc_27ccb

dec_label_pc_27ccb:                               ; preds = %dec_label_pc_27c63
  call void @__stack_chk_fail()
  br label %dec_label_pc_27cd0

dec_label_pc_27cd0:                               ; preds = %dec_label_pc_27ccb, %dec_label_pc_27c63
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


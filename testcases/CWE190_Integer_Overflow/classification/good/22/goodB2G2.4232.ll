@global_var_83766 = external constant [4 x i8]
@CWE190_Integer_Overflow__int64_t_fscanf_preinc_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_83788 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_18998:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83766, ptr nonnull %stack_var_-24)
  store i32 1, ptr @CWE190_Integer_Overflow__int64_t_fscanf_preinc_22_goodB2G2Global, align 4
  %3 = load i64, ptr %stack_var_-24, align 8
  call void @anon0(i64 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_18a08, label %dec_label_pc_18a03

dec_label_pc_18a03:                               ; preds = %dec_label_pc_18998
  call void @__stack_chk_fail()
  br label %dec_label_pc_18a08

dec_label_pc_18a08:                               ; preds = %dec_label_pc_18a03, %dec_label_pc_18998
  ret void
}

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_18b06:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int64_t_fscanf_preinc_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_18b5a, label %dec_label_pc_18b20

dec_label_pc_18b20:                               ; preds = %dec_label_pc_18b06
  %2 = icmp eq i64 %data, 9223372036854775807
  br i1 %2, label %dec_label_pc_18b4b, label %dec_label_pc_18b30

dec_label_pc_18b30:                               ; preds = %dec_label_pc_18b20
  %3 = add i64 %data, 1
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_18b5a

dec_label_pc_18b4b:                               ; preds = %dec_label_pc_18b20
  call void @printLine(ptr @global_var_83788)
  br label %dec_label_pc_18b5a

dec_label_pc_18b5a:                               ; preds = %dec_label_pc_18b4b, %dec_label_pc_18b30, %dec_label_pc_18b06
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


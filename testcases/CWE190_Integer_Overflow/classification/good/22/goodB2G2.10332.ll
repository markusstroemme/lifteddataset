@CWE190_Integer_Overflow__int_fscanf_preinc_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_86be8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_86bc6 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_3855b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_86bc6)
  store i32 1, ptr @CWE190_Integer_Overflow__int_fscanf_preinc_22_goodB2G2Global, align 4
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_385c8, label %dec_label_pc_385c3

dec_label_pc_385c3:                               ; preds = %dec_label_pc_3855b
  call void @__stack_chk_fail()
  br label %dec_label_pc_385c8

dec_label_pc_385c8:                               ; preds = %dec_label_pc_385c3, %dec_label_pc_3855b
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_386af:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_fscanf_preinc_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_386f6, label %dec_label_pc_386c8

dec_label_pc_386c8:                               ; preds = %dec_label_pc_386af
  %2 = icmp eq i32 %data, 2147483647
  br i1 %2, label %dec_label_pc_386e7, label %dec_label_pc_386d1

dec_label_pc_386d1:                               ; preds = %dec_label_pc_386c8
  %3 = add i32 %data, 1
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_386f6

dec_label_pc_386e7:                               ; preds = %dec_label_pc_386c8
  call void @printLine(ptr @global_var_86be8)
  br label %dec_label_pc_386f6

dec_label_pc_386f6:                               ; preds = %dec_label_pc_386e7, %dec_label_pc_386d1, %dec_label_pc_386af
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@global_var_89776 = external constant [4 x i8]
@CWE190_Integer_Overflow__short_fscanf_preinc_68_goodB2GData = external local_unnamed_addr global i16
@global_var_89780 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_52fb4:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_89776, ptr nonnull %stack_var_-18)
  %3 = load i16, ptr %stack_var_-18, align 2
  store i16 %3, ptr @CWE190_Integer_Overflow__short_fscanf_preinc_68_goodB2GData, align 2
  call void @anon0()
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_53021, label %dec_label_pc_5301c

dec_label_pc_5301c:                               ; preds = %dec_label_pc_52fb4
  call void @__stack_chk_fail()
  br label %dec_label_pc_53021

dec_label_pc_53021:                               ; preds = %dec_label_pc_5301c, %dec_label_pc_52fb4
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_530b2:
  %0 = load i16, ptr @CWE190_Integer_Overflow__short_fscanf_preinc_68_goodB2GData, align 2
  %1 = icmp eq i16 %0, 32767
  br i1 %1, label %dec_label_pc_530f1, label %dec_label_pc_530d1

dec_label_pc_530d1:                               ; preds = %dec_label_pc_530b2
  %2 = add i16 %0, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_53100

dec_label_pc_530f1:                               ; preds = %dec_label_pc_530b2
  call void @printLine(ptr @global_var_89780)
  br label %dec_label_pc_53100

dec_label_pc_53100:                               ; preds = %dec_label_pc_530f1, %dec_label_pc_530d1
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


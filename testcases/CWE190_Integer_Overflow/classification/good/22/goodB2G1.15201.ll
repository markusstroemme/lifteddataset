@global_var_892e6 = external constant [4 x i8]
@CWE190_Integer_Overflow__short_fscanf_preinc_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_892f0 = external constant [21 x i8]
@global_var_89308 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_50b65:
  %stack_var_-18 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-18, align 2
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_892e6, ptr nonnull %stack_var_-18)
  store i32 0, ptr @CWE190_Integer_Overflow__short_fscanf_preinc_22_goodB2G1Global, align 4
  %3 = load i16, ptr %stack_var_-18, align 2
  call void @anon0(i16 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_50bd3, label %dec_label_pc_50bce

dec_label_pc_50bce:                               ; preds = %dec_label_pc_50b65
  call void @__stack_chk_fail()
  br label %dec_label_pc_50bd3

dec_label_pc_50bd3:                               ; preds = %dec_label_pc_50bce, %dec_label_pc_50b65
  ret void
}

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_50cdb:
  %0 = load i32, ptr @CWE190_Integer_Overflow__short_fscanf_preinc_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_50d08, label %dec_label_pc_50cf7

dec_label_pc_50cf7:                               ; preds = %dec_label_pc_50cdb
  call void @printLine(ptr @global_var_892f0)
  br label %dec_label_pc_50d3f

dec_label_pc_50d08:                               ; preds = %dec_label_pc_50cdb
  %2 = icmp eq i16 %data, 32767
  br i1 %2, label %dec_label_pc_50d30, label %dec_label_pc_50d10

dec_label_pc_50d10:                               ; preds = %dec_label_pc_50d08
  %3 = add i16 %data, 1
  %4 = sext i16 %3 to i32
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_50d3f

dec_label_pc_50d30:                               ; preds = %dec_label_pc_50d08
  call void @printLine(ptr @global_var_89308)
  br label %dec_label_pc_50d3f

dec_label_pc_50d3f:                               ; preds = %dec_label_pc_50d30, %dec_label_pc_50d10, %dec_label_pc_50cf7
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


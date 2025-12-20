@global_var_860d6 = external constant [16 x i8]
@CWE190_Integer_Overflow__int_fgets_preinc_22_goodB2G1Global = external local_unnamed_addr global i32
@global_var_860e8 = external constant [21 x i8]
@global_var_86100 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_32dc9:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_32e2e, label %dec_label_pc_32e1d

dec_label_pc_32e1d:                               ; preds = %dec_label_pc_32dc9
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_32e3d

dec_label_pc_32e2e:                               ; preds = %dec_label_pc_32dc9
  call void @printLine(ptr @global_var_860d6)
  store i32 0, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_32e3d

dec_label_pc_32e3d:                               ; preds = %dec_label_pc_32e2e, %dec_label_pc_32e1d
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 0, ptr @CWE190_Integer_Overflow__int_fgets_preinc_22_goodB2G1Global, align 4
  call void @anon0(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_32e66, label %dec_label_pc_32e61

dec_label_pc_32e61:                               ; preds = %dec_label_pc_32e3d
  call void @__stack_chk_fail()
  br label %dec_label_pc_32e66

dec_label_pc_32e66:                               ; preds = %dec_label_pc_32e61, %dec_label_pc_32e3d
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_32f91:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_fgets_preinc_22_goodB2G1Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_32fbb, label %dec_label_pc_32faa

dec_label_pc_32faa:                               ; preds = %dec_label_pc_32f91
  call void @printLine(ptr @global_var_860e8)
  br label %dec_label_pc_32fe9

dec_label_pc_32fbb:                               ; preds = %dec_label_pc_32f91
  %2 = icmp eq i32 %data, 2147483647
  br i1 %2, label %dec_label_pc_32fda, label %dec_label_pc_32fc4

dec_label_pc_32fc4:                               ; preds = %dec_label_pc_32fbb
  %3 = add i32 %data, 1
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_32fe9

dec_label_pc_32fda:                               ; preds = %dec_label_pc_32fbb
  call void @printLine(ptr @global_var_86100)
  br label %dec_label_pc_32fe9

dec_label_pc_32fe9:                               ; preds = %dec_label_pc_32fda, %dec_label_pc_32fc4, %dec_label_pc_32faa
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

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


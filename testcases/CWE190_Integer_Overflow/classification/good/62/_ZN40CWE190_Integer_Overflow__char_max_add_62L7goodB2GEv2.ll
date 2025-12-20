@global_var_73cb0 = external constant [54 x i8]
@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_46bb4:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-18 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 32, ptr %stack_var_-18, align 4
  %1 = bitcast ptr %stack_var_-18 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = load i32, ptr %stack_var_-18, align 4
  %4 = trunc i32 %3 to i8
  %5 = icmp eq i8 %4, 127
  br i1 %5, label %dec_label_pc_46bfe, label %dec_label_pc_46be7

dec_label_pc_46be7:                               ; preds = %dec_label_pc_46bb4
  %6 = mul i32 %3, 16777216
  %sext = add i32 %6, 16777216
  %7 = udiv i32 %sext, 16777216
  %8 = trunc i32 %7 to i8
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_46c0d

dec_label_pc_46bfe:                               ; preds = %dec_label_pc_46bb4
  call void @printLine(ptr @global_var_73cb0)
  br label %dec_label_pc_46c0d

dec_label_pc_46c0d:                               ; preds = %dec_label_pc_46bfe, %dec_label_pc_46be7
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_46c22, label %dec_label_pc_46c1d

dec_label_pc_46c1d:                               ; preds = %dec_label_pc_46c0d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_46c22

dec_label_pc_46c22:                               ; preds = %dec_label_pc_46c1d, %dec_label_pc_46c0d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_46c65:
  %0 = ptrtoint ptr %arg1 to i64
  store i8 127, ptr %arg1, align 1
  ret i64 %0
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5a014:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5a037, label %dec_label_pc_5a02b

dec_label_pc_5a02b:                               ; preds = %dec_label_pc_5a014
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5a037

dec_label_pc_5a037:                               ; preds = %dec_label_pc_5a02b, %dec_label_pc_5a014
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


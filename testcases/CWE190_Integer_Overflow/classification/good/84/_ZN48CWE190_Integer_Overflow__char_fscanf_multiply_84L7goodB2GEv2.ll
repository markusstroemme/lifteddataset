@global_var_735a8 = external constant [54 x i8]
@global_var_76cf3 = external constant [6 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_735a0 = external constant [3 x i8]

define void @anon0(ptr %result, i8 %arg2) local_unnamed_addr {
dec_label_pc_4464e:
  %0 = bitcast ptr %result to ptr
  store i8 %arg2, ptr %0, align 1
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_735a0)
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_44692:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i8
  %3 = icmp slt i8 %2, 1
  br i1 %3, label %dec_label_pc_446e0, label %dec_label_pc_446ad

dec_label_pc_446ad:                               ; preds = %dec_label_pc_44692
  %4 = icmp sgt i8 %2, 62
  br i1 %4, label %dec_label_pc_446d1, label %dec_label_pc_446b8

dec_label_pc_446b8:                               ; preds = %dec_label_pc_446ad
  %5 = mul i8 %2, 2
  call void @printHexCharLine(i8 %5)
  br label %dec_label_pc_446e0

dec_label_pc_446d1:                               ; preds = %dec_label_pc_446ad
  call void @printLine(ptr @global_var_735a8)
  br label %dec_label_pc_446e0

dec_label_pc_446e0:                               ; preds = %dec_label_pc_446d1, %dec_label_pc_446b8, %dec_label_pc_44692
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_44835:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 1)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i8 32)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_448a6, label %dec_label_pc_44870

dec_label_pc_44870:                               ; preds = %dec_label_pc_44835
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 1)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_448a6

dec_label_pc_448a6:                               ; preds = %dec_label_pc_44870, %dec_label_pc_44835
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr


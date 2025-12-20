@global_var_76660 = external constant [4 x i8]
@global_var_76668 = external constant [54 x i8]
@global_var_76ce9 = external constant [5 x i8]
@0 = external global i32
@global_var_a5080 = external local_unnamed_addr global ptr

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_582c9:
  %0 = load ptr, ptr @global_var_a5080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_76660, ptr %arg1)
  %2 = sext i32 %1 to i64
  ret i64 %2
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_582fe:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = load i64, ptr %stack_var_-32, align 8
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %dec_label_pc_58371, label %dec_label_pc_58336

dec_label_pc_58336:                               ; preds = %dec_label_pc_582fe
  %5 = icmp sgt i64 %3, 4611686018427387902
  br i1 %5, label %dec_label_pc_58362, label %dec_label_pc_58349

dec_label_pc_58349:                               ; preds = %dec_label_pc_58336
  %6 = mul i64 %3, 2
  call void @printLongLongLine(i64 %6)
  br label %dec_label_pc_58371

dec_label_pc_58362:                               ; preds = %dec_label_pc_58336
  call void @printLine(ptr @global_var_76668)
  br label %dec_label_pc_58371

dec_label_pc_58371:                               ; preds = %dec_label_pc_58362, %dec_label_pc_58349, %dec_label_pc_582fe
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_58386, label %dec_label_pc_58381

dec_label_pc_58381:                               ; preds = %dec_label_pc_58371
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_58386

dec_label_pc_58386:                               ; preds = %dec_label_pc_58381, %dec_label_pc_58371
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


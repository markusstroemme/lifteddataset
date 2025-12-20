@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_284f5:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  store i64 %1, ptr %stack_var_-24, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = add i64 %1, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = bitcast ptr %stack_var_-24 to ptr
  %7 = call i64 @anon1(ptr nonnull %6)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_28560, label %dec_label_pc_2855b

dec_label_pc_2855b:                               ; preds = %dec_label_pc_284f5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_28560

dec_label_pc_28560:                               ; preds = %dec_label_pc_2855b, %dec_label_pc_284f5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_285df:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %arg1 to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = bitcast ptr %stack_var_-72 to ptr
  %4 = call ptr @strncat(ptr nonnull %3, ptr %1, i32 %2)
  call void @printLine(ptr %1)
  %5 = icmp eq ptr %arg1, null
  br i1 %5, label %dec_label_pc_28684, label %dec_label_pc_28678

dec_label_pc_28678:                               ; preds = %dec_label_pc_285df
  %6 = ptrtoint ptr %arg1 to i64
  %7 = bitcast ptr %arg1 to ptr
  %8 = and i64 %6, 4294967295
  %9 = inttoptr i64 %8 to ptr
  call void @_ZdaPv(ptr %7, ptr %9)
  br label %dec_label_pc_28684

dec_label_pc_28684:                               ; preds = %dec_label_pc_28678, %dec_label_pc_285df
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_28699, label %dec_label_pc_28694

dec_label_pc_28694:                               ; preds = %dec_label_pc_28684
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_28699

dec_label_pc_28699:                               ; preds = %dec_label_pc_28694, %dec_label_pc_28684
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


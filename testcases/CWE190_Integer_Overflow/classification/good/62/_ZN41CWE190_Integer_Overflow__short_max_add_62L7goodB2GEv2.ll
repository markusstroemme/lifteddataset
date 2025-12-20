@global_var_78bf0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5489a:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = load i32, ptr %stack_var_-20, align 4
  %4 = trunc i32 %3 to i16
  %5 = icmp eq i16 %4, 32767
  br i1 %5, label %dec_label_pc_548e9, label %dec_label_pc_548d1

dec_label_pc_548d1:                               ; preds = %dec_label_pc_5489a
  %6 = mul i32 %3, 65536
  %sext = add i32 %6, 65536
  %7 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_548f8

dec_label_pc_548e9:                               ; preds = %dec_label_pc_5489a
  call void @printLine(ptr @global_var_78bf0)
  br label %dec_label_pc_548f8

dec_label_pc_548f8:                               ; preds = %dec_label_pc_548e9, %dec_label_pc_548d1
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_5490d, label %dec_label_pc_54908

dec_label_pc_54908:                               ; preds = %dec_label_pc_548f8
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5490d

dec_label_pc_5490d:                               ; preds = %dec_label_pc_54908, %dec_label_pc_548f8
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_54954:
  %0 = ptrtoint ptr %arg1 to i64
  store i16 32767, ptr %arg1, align 2
  ret i64 %0
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

declare i64 @__readfsqword(i64) local_unnamed_addr


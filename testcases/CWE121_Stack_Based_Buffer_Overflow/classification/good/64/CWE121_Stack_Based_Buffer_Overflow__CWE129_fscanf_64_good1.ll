@global_var_b6ae8 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_27e1b:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 7, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_27e65, label %dec_label_pc_27e60

dec_label_pc_27e60:                               ; preds = %dec_label_pc_27e1b
  call void @__stack_chk_fail()
  br label %dec_label_pc_27e65

dec_label_pc_27e65:                               ; preds = %dec_label_pc_27e60, %dec_label_pc_27e1b
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_27fa3:
  %0 = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = trunc i64 %1 to i32
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %dec_label_pc_28033, label %dec_label_pc_28001

dec_label_pc_28001:                               ; preds = %dec_label_pc_27fa3
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %sext1 = mul i64 %1, 4294967296
  %6 = ashr exact i64 %sext1, 30
  %7 = add i64 %5, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_28017

dec_label_pc_28017:                               ; preds = %dec_label_pc_28001, %dec_label_pc_28017
  %.reload = load i64, ptr %.reg2mem, align 8
  %sext = mul i64 %.reload, 4294967296
  %10 = ashr exact i64 %sext, 30
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %14 = add nuw nsw i64 %.reload, 1
  %15 = and i64 %14, 4294967295
  %16 = trunc i64 %14 to i32
  %17 = icmp slt i32 %16, 10
  store i64 %15, ptr %.reg2mem, align 8
  br i1 %17, label %dec_label_pc_28017, label %dec_label_pc_28042

dec_label_pc_28033:                               ; preds = %dec_label_pc_27fa3
  call void @printLine(ptr @global_var_b6ae8)
  br label %dec_label_pc_28042

dec_label_pc_28042:                               ; preds = %dec_label_pc_28017, %dec_label_pc_28033
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %2, %18
  br i1 %19, label %dec_label_pc_28057, label %dec_label_pc_28052

dec_label_pc_28052:                               ; preds = %dec_label_pc_28042
  call void @__stack_chk_fail()
  br label %dec_label_pc_28057

dec_label_pc_28057:                               ; preds = %dec_label_pc_28052, %dec_label_pc_28042
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


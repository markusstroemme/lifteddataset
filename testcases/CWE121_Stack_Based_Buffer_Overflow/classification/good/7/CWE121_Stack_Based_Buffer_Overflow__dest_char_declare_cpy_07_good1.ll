@global_var_6c2f1 = external constant [21 x i8]
@global_var_8902c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1d09a:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %dataGoodBuffer_-240 = alloca [100 x i8], align 8
  %stack_var_-232 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_8902c, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_1d0d4, label %dec_label_pc_1d0c3

dec_label_pc_1d0c3:                               ; preds = %dec_label_pc_1d09a
  call void @printLine(ptr @global_var_6c2f1)
  %.pre = bitcast ptr %dataGoodBuffer_-240 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_1d0ec

dec_label_pc_1d0d4:                               ; preds = %dec_label_pc_1d09a
  %3 = ptrtoint ptr %stack_var_-232 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [100 x i8] undef, i8 %4, 0
  store [100 x i8] %5, ptr %dataGoodBuffer_-240, align 8
  %6 = bitcast ptr %dataGoodBuffer_-240 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_1d0ec

dec_label_pc_1d0ec:                               ; preds = %dec_label_pc_1d0d4, %dec_label_pc_1d0c3
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %9 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %10 = load i64, ptr %.pre-phi.reload, align 8
  %11 = inttoptr i64 %10 to ptr
  %12 = bitcast ptr %stack_var_-120 to ptr
  %13 = call ptr @strcpy(ptr %11, ptr nonnull %12)
  call void @printLine(ptr %11)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_1d140, label %dec_label_pc_1d13b

dec_label_pc_1d13b:                               ; preds = %dec_label_pc_1d0ec
  call void @__stack_chk_fail()
  br label %dec_label_pc_1d140

dec_label_pc_1d140:                               ; preds = %dec_label_pc_1d13b, %dec_label_pc_1d0ec
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5bf2d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5bf50, label %dec_label_pc_5bf44

dec_label_pc_5bf44:                               ; preds = %dec_label_pc_5bf2d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5bf50

dec_label_pc_5bf50:                               ; preds = %dec_label_pc_5bf44, %dec_label_pc_5bf2d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


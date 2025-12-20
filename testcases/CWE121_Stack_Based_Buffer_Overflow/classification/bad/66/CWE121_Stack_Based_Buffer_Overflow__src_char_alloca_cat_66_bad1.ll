@global_var_1000 = external global i32
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_27608:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x ptr], align 8
  %data_-72 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-72 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_27651

dec_label_pc_27651:                               ; preds = %dec_label_pc_27651, %dec_label_pc_27608
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_27668, label %dec_label_pc_27651

dec_label_pc_27668:                               ; preds = %dec_label_pc_27651
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %data_-72, align 8
  %7 = insertvalue [5 x ptr] undef, ptr %6, 0
  store [5 x ptr] %7, ptr %dataArray_-64, align 8
  %8 = bitcast ptr %dataArray_-64 to ptr
  %9 = load i64, ptr %8, align 8
  %10 = inttoptr i64 %9 to ptr
  %11 = call ptr @memset(ptr %10, i32 65, i32 99)
  %12 = add i64 %9, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  %14 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_276f7, label %dec_label_pc_276f2

dec_label_pc_276f2:                               ; preds = %dec_label_pc_27668
  call void @__stack_chk_fail()
  br label %dec_label_pc_276f7

dec_label_pc_276f7:                               ; preds = %dec_label_pc_276f2, %dec_label_pc_27668
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_277ff:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @strcat(ptr nonnull %5, ptr %6)
  call void @printLine(ptr %6)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_27894, label %dec_label_pc_2788f

dec_label_pc_2788f:                               ; preds = %dec_label_pc_277ff
  call void @__stack_chk_fail()
  br label %dec_label_pc_27894

dec_label_pc_27894:                               ; preds = %dec_label_pc_2788f, %dec_label_pc_277ff
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @strcat(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


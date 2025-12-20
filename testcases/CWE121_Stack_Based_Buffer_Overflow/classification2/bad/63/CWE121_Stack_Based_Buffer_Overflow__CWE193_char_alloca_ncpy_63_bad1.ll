@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_29687:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_296d0

dec_label_pc_296d0:                               ; preds = %dec_label_pc_296d0, %dec_label_pc_29687
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_296e7, label %dec_label_pc_296d0

dec_label_pc_296e7:                               ; preds = %dec_label_pc_296d0
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 32
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_29752

dec_label_pc_29752:                               ; preds = %dec_label_pc_29752, %dec_label_pc_296e7
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %7 = icmp eq i64 %rsp.1.reload, %4
  %8 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %8, ptr %rsp.1.reg2mem, align 8
  br i1 %7, label %dec_label_pc_29769, label %dec_label_pc_29752

dec_label_pc_29769:                               ; preds = %dec_label_pc_29752
  %9 = inttoptr i64 %6 to ptr
  %10 = bitcast ptr %dataBadBuffer_-40 to ptr
  store i64 %6, ptr %10, align 8
  store i8 0, ptr %9, align 16
  call void @anon1(ptr nonnull %dataBadBuffer_-40)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_297d6, label %dec_label_pc_297d1

dec_label_pc_297d1:                               ; preds = %dec_label_pc_29769
  call void @__stack_chk_fail()
  br label %dec_label_pc_297d6

dec_label_pc_297d6:                               ; preds = %dec_label_pc_297d1, %dec_label_pc_29769
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_2993e:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call i32 @strlen(ptr nonnull %1)
  %3 = add i32 %2, 1
  %4 = bitcast ptr %dataPtr to ptr
  %5 = call ptr @strncpy(ptr %4, ptr nonnull %1, i32 %3)
  call void @printLine(ptr %4)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_299c4, label %dec_label_pc_299bf

dec_label_pc_299bf:                               ; preds = %dec_label_pc_2993e
  call void @__stack_chk_fail()
  br label %dec_label_pc_299c4

dec_label_pc_299c4:                               ; preds = %dec_label_pc_299bf, %dec_label_pc_2993e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


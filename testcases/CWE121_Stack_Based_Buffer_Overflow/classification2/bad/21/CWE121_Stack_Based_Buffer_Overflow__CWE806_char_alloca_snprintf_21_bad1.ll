@global_var_fff = external global ptr
@global_var_90f13 = external constant [3 x i8]
@global_var_1000 = external global i32
@global_var_b41bc = external local_unnamed_addr global i32

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_37938:
  %0 = load i32, ptr @global_var_b41bc, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_37973, label %dec_label_pc_37952

dec_label_pc_37952:                               ; preds = %dec_label_pc_37938
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_37973

dec_label_pc_37973:                               ; preds = %dec_label_pc_37952, %dec_label_pc_37938
  ret ptr %data
}

define void @anon0() local_unnamed_addr {
dec_label_pc_37979:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_379c2

dec_label_pc_379c2:                               ; preds = %dec_label_pc_379c2, %dec_label_pc_37979
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_379d9, label %dec_label_pc_379c2

dec_label_pc_379d9:                               ; preds = %dec_label_pc_379c2
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %data_-88, align 8
  store i32 1, ptr @global_var_b41bc, align 4
  %7 = call ptr @anon1(ptr %6)
  store i64 0, ptr %stack_var_-72, align 8
  %8 = call i32 @strlen(ptr %7)
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %9, i32 %8, ptr @global_var_90f13, ptr %7)
  call void @printLine(ptr %7)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_37abd, label %dec_label_pc_37ab8

dec_label_pc_37ab8:                               ; preds = %dec_label_pc_379d9
  call void @__stack_chk_fail()
  br label %dec_label_pc_37abd

dec_label_pc_37abd:                               ; preds = %dec_label_pc_37ab8, %dec_label_pc_379d9
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


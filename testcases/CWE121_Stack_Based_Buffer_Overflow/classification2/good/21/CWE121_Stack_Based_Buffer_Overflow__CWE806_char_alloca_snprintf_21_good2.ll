@global_var_fff = external global ptr
@global_var_90f13 = external constant [3 x i8]
@global_var_1000 = external global i32
@global_var_b41c4 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_37c57:
  %0 = load i32, ptr @global_var_b41c4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_37c92, label %dec_label_pc_37c71

dec_label_pc_37c71:                               ; preds = %dec_label_pc_37c57
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_37c92

dec_label_pc_37c92:                               ; preds = %dec_label_pc_37c71, %dec_label_pc_37c57
  ret ptr %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_37c98:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_37ce1

dec_label_pc_37ce1:                               ; preds = %dec_label_pc_37ce1, %dec_label_pc_37c98
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_37cf8, label %dec_label_pc_37ce1

dec_label_pc_37cf8:                               ; preds = %dec_label_pc_37ce1
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %data_-88, align 8
  store i32 1, ptr @global_var_b41c4, align 4
  %7 = call ptr @anon0(ptr %6)
  store i64 0, ptr %stack_var_-72, align 8
  %8 = call i32 @strlen(ptr %7)
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %9, i32 %8, ptr @global_var_90f13, ptr %7)
  call void @printLine(ptr %7)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_37ddc, label %dec_label_pc_37dd7

dec_label_pc_37dd7:                               ; preds = %dec_label_pc_37cf8
  call void @__stack_chk_fail()
  br label %dec_label_pc_37ddc

dec_label_pc_37ddc:                               ; preds = %dec_label_pc_37dd7, %dec_label_pc_37cf8
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

